
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-bcap-core";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/melodic/bcap_core/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "1d0c1bb6201fd6f52a542770b9fa39ac14aa86dbaeebac2384afbeb8315ff940";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap core package includes libraries for communicating ORiN via b-CAP (Binary - Controller Access Protocol) protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
