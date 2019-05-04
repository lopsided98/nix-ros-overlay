
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, message-generation, message-runtime, pcl-ros, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ifm-o3mxxx";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/takiaine/ifm_o3mxxx-release/archive/release/kinetic/ifm_o3mxxx/1.0.1-0.tar.gz;
    sha256 = "1c4b8423548da9b6e19cfdd85a7d4451313efb7c1cc1471b810337042b6509c7";
  };

  buildInputs = [ sensor-msgs roscpp message-generation pcl-ros std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime pcl-ros std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ifm_o3mxxx package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
