
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-control-gui, open-manipulator-controller, open-manipulator-description, open-manipulator-libs, open-manipulator-moveit, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator";
  version = "2.0.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator-release";
        rev = "release/melodic/open_manipulator/2.0.1-0";
        sha256 = "sha256-wV0oBwVk7IocHqBnl55/eVTQ/k6jKrYL/aTfuEZLySo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-control-gui open-manipulator-controller open-manipulator-description open-manipulator-libs open-manipulator-moveit open-manipulator-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-enabled OpenManipulator is a full open robot platform consisting of OpenSoftware​, OpenHardware and OpenCR(Embedded board)​.
    The OpenManipulator is allowed users to control it more easily by linking with the MoveIt! package. Moreover it has full hardware compatibility with TurtleBot3​. 
    Even if you do not have a real robot, you can control the robot in the Gazebo simulator​.'';
    license = with lib.licenses; [ asl20 ];
  };
}
