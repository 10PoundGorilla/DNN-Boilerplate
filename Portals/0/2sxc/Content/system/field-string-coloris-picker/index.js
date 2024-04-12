(() => {

    const tagName = 'field-string-coloris-picker';
    const colorisJsCdn = 'https://cdn.jsdelivr.net/gh/mdbassit/Coloris@latest/dist/coloris.min.js';

    class StringColorPicker extends HTMLElement {

        /** connectedCallback() is the standard callback when the component has been attached */
        connectedCallback() {
            this.fieldId = `coloris-${this.connector.field.name}`;
            this.innerHTML = `
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/mdbassit/Coloris@latest/dist/coloris.min.css"/>
            <style>
                .clr-field {
                    display: flex;
                }
                .clr-field input {
                    margin: 0;
                    padding: 0;
                    flex-grow: 1;
                    border: none;
                    padding: 0.5em 0;
                    font-family: Roboto, sans-serif;
                    font-size: 16px;
                }
            </style>
            <input type="text" id="${this.fieldId}" value="${this.connector.data.value}" data-coloris>`;
            this.fieldElement = document.getElementById(this.fieldId);

            this.connector.loadScript('Coloris', colorisJsCdn, () => { this.initPicker() });
        }

        /** disconnectedCallback() is a standard callback for clean-up */
        disconnectedCallback() {}

        /** This is called when the JS is loaded from loadScript */
        initPicker() {
            Coloris({
                theme: 'pill',
                themeMode: 'light',
                clearButton: true
            });

            Coloris.setInstance(`#${this.fieldId}`, {
                theme: (this.connector.field.settings.SwatchesOnly) ? 'default' : 'pill',
                format: (!!this.connector.field.settings.Format) ? this.connector.field.settings.Format : "hex",
                alpha: (!!this.connector.field.settings.Alpha) ? this.connector.field.settings.Alpha : false,
                forceAlpha: (!!this.connector.field.settings.ForceAlpha) ? this.connector.field.settings.ForceAlpha : false,
                swatchesOnly: (!!this.connector.field.settings.SwatchesOnly) ? this.connector.field.settings.SwatchesOnly : false,
                swatches: this.getSwatches(),
                onChange: (color) => {
                    this.update(color)
                }
            });
        }

        /** Update the value */
        update(color) {
            if (color.length == 0) {
                return this.updateIfChanged(null);
            }
            this.updateIfChanged(color);
        }

        /** Only update the value if it really changed, so form isn't dirty if nothing was set */
        updateIfChanged(value) {
            var data = this.connector.data;
            if (data.value === '' && value == null) return;
            if (data.value === value) return;
            data.update(value);
        }

        /** Load the settings and convert to swatch-list */
        getSwatches() {
            var swatches = this.connector.field.settings.Swatches;
            if (!swatches) return [];
            return swatches.split('\n').map((colorLine) => {
                return colorLine.trim();
            });
        }
    }

    // Register this web component - if it hasn't been registered yet
    if (!customElements.get(tagName)) customElements.define(tagName, StringColorPicker);
})();