import Foundation

public struct ModelingExercise: BaseExercise {
    public typealias SelfType = ModelingExercise
    public static var type: String {
        "modeling"
    }

    public var id: Int
    public var title: String?
    public var shortName: String?
    public var maxPoints: Double?
    public var bonusPoints: Double?
    public var dueDate: Date?
    public var releaseDate: Date?
    public var assessmentDueDate: Date?
    public var difficulty: Difficulty?
    public var mode: Mode = .individual
    public var categories: [Category]? = []
    public var visibleToStudents: Bool?
    public var teamMode: Bool?
    public var secondCorrectionEnabled: Bool?
    public var problemStatement: String?
    public var assessmentType: AssessmentType?
    public var allowComplaintsForAutomaticAssessments: Bool?
    public var allowManualFeedbackRequests: Bool?
    public var includedInOverallScore: IncludedInOverallScore = .includedCompletely
    public var exampleSolutionPublicationDate: Date?
    public var studentParticipations: [Participation]?
    public var attachments: [Attachment]? = []
    public var studentAssignedTeamIdComputed: Bool?
    public var studentAssignedTeamId: Int?
    public var gradingCriteria: [GradingCriterion]?
    public var gradingInstructions: String?
    public var numberOfAssessmentsOfCorrectionRounds: [DueDateStat]?
    public var numberOfOpenComplaints: Int?
    public var numberOfOpenMoreFeedbackRequests: Int?
    public var numberOfSubmissions: DueDateStat?
    public var totalNumberOfAssessments: DueDateStat?

    public var diagramType: UMLDiagramType?
    public var exampleSolutionModel: String?
    public var exampleSolutionExplanation: String?

    public init(id: Int) {
        self.id = id
    }

    public func copyWithUpdatedParticipations(newParticipations: [Participation]) -> ModelingExercise {
        var clone = self
        clone[keyPath: \.studentParticipations] = newParticipations
        return clone
    }
}

public enum UMLDiagramType: String, ConstantsEnum {
    case classDiagram = "ClassDiagram"
    case objectDiagram = "ObjectDiagram"
    case activityDiagram = "ActivityDiagram"
    case useCaseDiagram = "UseCaseDiagram"
    case communicationDiagram = "CommunicationDiagram"
    case componentDiagram = "ComponentDiagram"
    case deploymentDiagram = "DeploymentDiagram"
    case petriNet = "PetriNet"
    case syntaxTree = "SyntaxTree"
    case flowchart = "Flowchart"
    case BPMN = "BPMN"
    case unknown
}
