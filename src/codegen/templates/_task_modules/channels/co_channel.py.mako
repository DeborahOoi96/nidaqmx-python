<%
    from codegen.utilities.attribute_helpers import get_attributes, get_enums_used
    from codegen.utilities.text_wrappers import wrap
    attributes = get_attributes(data, "COChannel")
    enums_used = get_enums_used(attributes)
%>\
# Do not edit this file; it was automatically generated.

from nidaqmx._task_modules.channels.channel import Channel
from nidaqmx.constants import (
    ${', '.join([c for c in enums_used]) | wrap(4, 4)})


class COChannel(Channel):
    """
    Represents one or more counter output virtual channels and their properties.
    """
    __slots__ = []

    def __repr__(self):
        return f'COChannel(name={self._name})'

<%namespace name="property_template" file="/property_template.py.mako"/>\
%for attribute in attributes:
${property_template.script_property(attribute)}\
%endfor
