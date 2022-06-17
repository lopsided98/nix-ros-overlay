
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lgsvl-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-external-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/melodic/autoware_external_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "7c79c2c05eccebce61b3be3fd3c13d440c9014b5e1425d752732ff557e402543";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lgsvl-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to contain an install external message dependencies'';
    license = with lib.licenses; [ asl20 ];
  };
}
