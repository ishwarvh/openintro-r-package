\name{resume}
\alias{resume}
\docType{data}
\title{
  Gender, Socioeconomic Class, and Interview Invites
}
\description{
  Resumes were sent out to 316 top law firms in the United States,
  and there were two randomized characteristics of each resume.
  First, the gender associated with the resume was randomized by
  assigning a first name of either James or Julia. Second, the
  socioeconomic class of the candidate was randomly assigned and
  represented through five minor changes associated with personal
  interests and other other minor details (e.g. an extracurricular
  activity of sailing team vs track and field). The outcome
  variable was whether the candidate was received an interview.
}
\usage{data("resume")}
\format{
  A data frame with 316 observations on the following 3 variables.
  Each row represents a resume sent a top law firm for this experiment.
  \describe{
    \item{\code{class}}{
      The resume represented irrelevant details suggesting either
      \code{"low"} or \code{"high"} socioeconomic class.
    }
    \item{\code{gender}}{
      The resume implied the candidate was either
      \code{"male"} or \code{"female"}.
    }
    \item{\code{outcome}}{
      If the candidate received an invitation for an
      \code{"interview"} or \code{"not"}.
    }
  }
}
\source{
  For a casual overview, see
  \url{https://hbr.org/2016/12/research-how-subtle-class-cues-can-backfire-on-your-resume}.

  For the academic paper, see
  Tilcsik A, Rivera LA. 2016. Class Advantage, Commitment Penalty.
  The Gendered Effect of Social Class Signals in an Elite Labor Market.
  American Sociological Review 81:6 p1097-1131.
  \url{http://journals.sagepub.com/doi/abs/10.1177/0003122416668154}.
}
\examples{
data(resume)
tapply(resume$outcome == "interview", resume[, c("class", "gender")], mean)
m <- glm(I(outcome == "interview") ~ gender * class, data = resume, family = binomial)
summary(m)
predict(m, type = "response")
}
\keyword{datasets}
