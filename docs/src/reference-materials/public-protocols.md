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

Types involved:

- [`DeclareTrainState`](./types.html#declaretrainstate)
- [`DeclareTrainStateResponse`](./types.html#declaretrainstateresponse)

## `MarshalIdentityRequest`

<!-- TODO(kcza): separate MarshalIdentityRequest and FactoryIdentityRequest to hide the latter -->

```mermaid
sequenceDiagram
    actor Requester
    participant Marshal

    Requester -) +Marshal: MarshalIdentityRequest
    Marshal --) -Requester: MarshalIdentityResponse
```

Types involved:

- [`MarshalIdentityRequest`](./types.html#marshalidentityrequest)
- [`MarshalIdentityResponse`](./types.html#marshalidentityresponse)
