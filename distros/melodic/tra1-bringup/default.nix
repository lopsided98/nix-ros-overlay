
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, joint-state-controller, joint-trajectory-controller, minas-control, position-controllers, robot-state-publisher, roslaunch, rostest, tf, tra1-description, tra1-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-tra1-bringup";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/melodic/tra1_bringup/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b26072a45edf374187cbf24fc53bdaa12840abfcd32a5e5a3e78e6d76609f721";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager joint-state-controller joint-trajectory-controller minas-control position-controllers robot-state-publisher tf tra1-description tra1-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for tra1 robto'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
