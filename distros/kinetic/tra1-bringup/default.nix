
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, joint-state-controller, joint-trajectory-controller, minas-control, position-controllers, robot-state-publisher, roslaunch, rostest, tf, tra1-description, tra1-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-tra1-bringup";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/tra1_bringup/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "786ee35544c93598d57b67968e50390ef3bbbc607b287f41ce276f7e3812c1dc";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager joint-state-controller joint-trajectory-controller minas-control position-controllers robot-state-publisher tf tra1-description tra1-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for tra1 robto'';
    license = with lib.licenses; [ gpl2 ];
  };
}
