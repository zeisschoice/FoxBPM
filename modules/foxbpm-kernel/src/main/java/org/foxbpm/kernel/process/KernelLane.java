package org.foxbpm.kernel.process;

import java.util.List;


public interface KernelLane extends KernelBaseElement {
    /**
     * Returns the value of the '<em><b>Partition Element</b></em>' containment reference.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Partition Element</em>' containment reference isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Partition Element</em>' containment reference.
     * @see #setPartitionElement(BaseElement)
     * @see org.eclipse.bpmn2.Bpmn2Package#getLane_PartitionElement()
     * @model containment="true" ordered="false"
     *        extendedMetaData="kind='element' name='partitionElement' namespace='http://www.omg.org/spec/BPMN/20100524/MODEL'"
     * @generated
     */
	KernelBaseElement getPartitionElement();

    /**
     * Sets the value of the '{@link org.eclipse.bpmn2.Lane#getPartitionElement <em>Partition Element</em>}' containment reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Partition Element</em>' containment reference.
     * @see #getPartitionElement()
     * @generated
     */
    void setPartitionElement(KernelBaseElement value);

    /**
     * Returns the value of the '<em><b>Flow Node Refs</b></em>' reference list.
     * The list contents are of type {@link org.eclipse.bpmn2.FlowNode}.
     * It is bidirectional and its opposite is '{@link org.eclipse.bpmn2.FlowNode#getLanes <em>Lanes</em>}'.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Flow Node Refs</em>' reference list isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Flow Node Refs</em>' reference list.
     * @see org.eclipse.bpmn2.Bpmn2Package#getLane_FlowNodeRefs()
     * @see org.eclipse.bpmn2.FlowNode#getLanes
     * @model opposite="lanes" resolveProxies="false" ordered="false"
     *        extendedMetaData="kind='element' name='flowNodeRef' namespace='http://www.omg.org/spec/BPMN/20100524/MODEL'"
     * @generated
     */
    List<KernelFlowNode> getFlowNodeRefs();

    /**
     * Returns the value of the '<em><b>Child Lane Set</b></em>' containment reference.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Child Lane Set</em>' containment reference isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Child Lane Set</em>' containment reference.
     * @see #setChildLaneSet(LaneSet)
     * @see org.eclipse.bpmn2.Bpmn2Package#getLane_ChildLaneSet()
     * @model containment="true" ordered="false"
     *        extendedMetaData="kind='element' name='childLaneSet' namespace='http://www.omg.org/spec/BPMN/20100524/MODEL'"
     * @generated
     */
    KernelLaneSet getChildLaneSet();

    /**
     * Sets the value of the '{@link org.eclipse.bpmn2.Lane#getChildLaneSet <em>Child Lane Set</em>}' containment reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Child Lane Set</em>' containment reference.
     * @see #getChildLaneSet()
     * @generated
     */
    void setChildLaneSet(KernelLaneSet value);

    /**
     * Returns the value of the '<em><b>Name</b></em>' attribute.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Name</em>' attribute isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Name</em>' attribute.
     * @see #setName(String)
     * @see org.eclipse.bpmn2.Bpmn2Package#getLane_Name()
     * @model ordered="false"
     *        extendedMetaData="kind='attribute' name='name'"
     * @generated
     */
    String getName();

    /**
     * Sets the value of the '{@link org.eclipse.bpmn2.Lane#getName <em>Name</em>}' attribute.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Name</em>' attribute.
     * @see #getName()
     * @generated
     */
    void setName(String value);

    /**
     * Returns the value of the '<em><b>Partition Element Ref</b></em>' reference.
     * <!-- begin-user-doc -->
     * <p>
     * If the meaning of the '<em>Partition Element Ref</em>' reference isn't clear,
     * there really should be more of a description here...
     * </p>
     * <!-- end-user-doc -->
     * @return the value of the '<em>Partition Element Ref</em>' reference.
     * @see #setPartitionElementRef(BaseElement)
     * @see org.eclipse.bpmn2.Bpmn2Package#getLane_PartitionElementRef()
     * @model ordered="false"
     *        extendedMetaData="kind='attribute' name='partitionElementRef'"
     * @generated
     */
    KernelBaseElement getPartitionElementRef();

    /**
     * Sets the value of the '{@link org.eclipse.bpmn2.Lane#getPartitionElementRef <em>Partition Element Ref</em>}' reference.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @param value the new value of the '<em>Partition Element Ref</em>' reference.
     * @see #getPartitionElementRef()
     * @generated
     */
    void setPartitionElementRef(KernelBaseElement value);

} // Lane
