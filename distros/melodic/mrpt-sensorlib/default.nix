
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-sensorlib";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/melodic/mrpt_sensorlib/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "a0e9b917797b73226f1b1880273bf7328b88616e9617db3c3882d6f707dc6cb5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime mrpt-msgs mrpt2 roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library for the base generic MRPT sensor node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
