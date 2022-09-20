
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, joy-teleop, robot-localization, robot-state-publisher, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-mrp2-teleop";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_common-release/archive/release/melodic/mrp2_teleop/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2ce1fc55f49d75f858d0933568b15a432db23769b1241f5a088468b0ca12c21c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy joy-teleop robot-localization robot-state-publisher twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleoperation and ros controls related launch files and configurations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
