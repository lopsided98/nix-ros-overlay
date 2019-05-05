
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, catkin, topic-tools, rosserial-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rosserial-server";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_server/0.8.0-0.tar.gz;
    sha256 = "fc7304dc2df2134f5d35a9e6ec22cf082a3742139f41b1ac1feb3156114a87b3";
  };

  buildInputs = [ topic-tools roscpp rosserial-msgs std-msgs ];
  propagatedBuildInputs = [ rosserial-python topic-tools rosserial-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
