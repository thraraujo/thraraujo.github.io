# Properties

Following: <https://www.programiz.com/python-programming/property>

the decorator @property allows us to define methods that can be accessed like an
attribute. In particular, we can use it to define getters and setters. In the
later case, we can create some conditions. For example, using my wallet program
-- remember that the snippet below lives in a given class - we can use the
@property

```python
def __init__(self, name: str):
    self._name = name

@property
def name(self):
    '''
    Name getter
    '''
    return self._name

@name.setter
def name(self, new_name):
    '''
    Name setter
    '''
    if type(new_name) is not str:
        raise ValueError("Name must be a string")
    else:
        self._name = new_name
```
