
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-brics-actuator";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/wnowak/brics_actuator-release/archive/release/melodic/brics_actuator/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "20a7643aa378c2f934d712eb798a3ad3a89e86728e22da9debfae0c62eb6294f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message defined in the BRICS project'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
