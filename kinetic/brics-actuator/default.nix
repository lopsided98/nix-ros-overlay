
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-brics-actuator";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/wnowak/brics_actuator-release/archive/release/kinetic/brics_actuator/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "03ca7dd20b0b7f3316887a13bdff4a00ea648252cfe33e9a71ac4268193a2c04";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message defined in the BRICS project'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
