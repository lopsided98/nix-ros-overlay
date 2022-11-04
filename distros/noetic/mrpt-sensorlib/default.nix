
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, mrpt-msgs, mrpt2, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensorlib";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensorlib/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c70391dffc776e5b5cdac8106d8829aaa22d1b62c3a73c60027e348f3e828d7a";
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
