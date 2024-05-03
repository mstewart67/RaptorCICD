classdef myUnitTest < matlab.unittest.TestCase
   properties
   end
    
    methods(TestMethodSetup)
        function initTest(testCase)
            import matlab.unittest.fixtures.TemporaryFolderFixture
            import matlab.unittest.plugins.LoggingPlugin

            disp('This is a print out from disp() during init.')
            log(testCase, 'This is a print out from the testcase log() during init.')

        end
    end
 
    methods(TestMethodTeardown)
        function closeTest(testCase)
            disp('This is a print out from disp() during close.')
            log(testCase, 'This is a print out from the testcase log() during close.')
        end
    end
    
    methods (Test, TestTags = {'SimulationOnly'})
        function testMyStuff(testCase)
            disp("This is printing to STDOUT.")
            log(testCase, "This is printing to log().")
            testCase.verifyTrue(true, 'Oh no what happened!');
        end
        
    end
end