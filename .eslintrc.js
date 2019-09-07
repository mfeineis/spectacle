/* eslint-disable capitalized-comments, max-len */
module.exports = {
    "extends": [
        "eslint:recommended",
        "plugin:jest/recommended",
    ],
    "root": true,
    "plugins": [
        "immutable",
    ],
    "rules": {
        "compat/compat": "error",
        "immutable/no-let": 2,
        "immutable/no-this": 2,
        "immutable/no-mutation": ["error", {
            exceptions: [{
                object: "module",
                property: "exports",
            }]
        }],
        "indent": [
            "error",
            4
        ],
        "line-comment-position": 2,
        "linebreak-style": [
            "error",
            "unix"
        ],
        "max-len": 2,
        "no-fallthrough": 2,
        "no-inline-comments": 2,
        "no-magic-numbers": 2,
        "no-param-reassign": 2,
        "no-shadow": 2,
        "no-undef": 2,
        "no-unused-vars": [
            "error",
            {
                "varsIgnorePattern": "_|__|___",
            }
        ],
        "no-var": 2,
        "no-warning-comments": 1,
        "quotes": [
            "error",
            "double"
        ],
        "semi": [
            "error",
            "always"
        ],
        "sort-keys": 2
    },
    "overrides": [
        {
            "env": {
                "es6": true,
                "node": true,
            },
            "files": [
                "jest.config.js",
                "postcss.config.js",
                "rollup.config.js",
                "src/**/*.spec.js",
                "tailwind.config.js",
            ],
            "parserOptions": {
                "ecmaVersion": 2018,
                "sourceType": "module",
            },
            "plugins": [
                "jest"
            ],
            "rules": {
                "compat/compat": 0,
                "jest/no-disabled-tests": "warn",
                "jest/no-focused-tests": "error",
                "jest/no-identical-title": "error",
                "jest/prefer-to-have-length": "warn",
                "jest/valid-expect": "error",
                "max-len": 0,
                "no-magic-numbers": 0,
            }
        },
        {
            "ecmaFeatures": {
                "arrowFunctions": false,
                "binaryLiterals": false,
                "blockBindings": true,
                "classes": false,
                "defaultParams": false,
                "destructuring": false,
                "forOf": false,
                "generators": false,
                "modules": true,
                "objectLiteralComputedProperties": false,
                "objectLiteralDuplicateProperties": false,
                "objectLiteralShorthandMethods": false,
                "objectLiteralShorthandProperties": false,
                "octalLiterals": false,
                "regexUFlag": false,
                "regexYFlag": false,
                "spread": false,
                "superInFunctions": false,
                "templateStrings": false,
                "unicodeCodePointEscapes": false,
                "globalReturn": false,
                "jsx": false
            },
            "env": {
                "commonjs": true,
                "es6": true,
            },
            "files": [
                "src/main.js",
            ],
            "parserOptions": {
                "ecmaVersion": 6,
                "sourceType": "module",
            },
            "plugins": [
                "compat",
                "es5",
            ],
            "rules": {
                "es5/no-es6-methods": "error",
                "es5/no-es6-static-methods": "error",
                "es5/no-arrow-functions": "error",
                "es5/no-binary-and-octal-literals": "error",
                "es5/no-block-scoping": 0, // "error",
                "es5/no-classes": "error",
                "es5/no-computed-properties": "error",
                "es5/no-default-parameters": "error",
                "es5/no-destructuring": "error",
                "es5/no-exponentiation-operator": "error",
                "es5/no-for-of": "error",
                "es5/no-generators": "error",
                "es5/no-modules": 0, //"error",
                "es5/no-object-super": "error",
                "es5/no-rest-parameters": "error",
                "es5/no-shorthand-properties": "error",
                "es5/no-spread": "error",
                "es5/no-template-literals": "error",
                "es5/no-typeof-symbol": "error",
                "es5/no-unicode-code-point-escape": "error",
                "es5/no-unicode-regex": "error",
            },
        }
    ],
};
