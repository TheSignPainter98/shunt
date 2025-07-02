# Public protocols

The following network interactions with `ox` are supported for external programs.

## `DeclareTrainState`

```mermaid
sequenceDiagram
    actor Requester
    participant Marshal

    Requester -) +Marshal: DeclareTrainState
    Marshal --) -Requester: DeclareTrainStateResponse
```

## `MarshalIdentityRequest`

<!-- TODO(kcza): separate MarshalIdentityRequest and FactoryIdentityRequest to hide the latter -->

```mermaid
sequenceDiagram
    actor Requester
    participant Marshal

    Requester -) +Marshal: MarshalIdentityRequest
    Marshal --) -Requester: MarshalIdentityResponse
```
