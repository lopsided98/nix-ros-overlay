
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, roscpp, message-generation, message-runtime, eigen, roslib }:
buildRosPackage {
  pname = "ros-lunar-parameter-pa";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/tuc-proaut/ros_parameter-release/archive/release/lunar/parameter_pa/1.2.1-0.tar.gz;
    sha256 = "032c38e7180a4ea2671925130753c8fe2515d21611e46701fa80e959034bda9d";
  };

  buildInputs = [ cmake-modules roscpp message-generation eigen roslib ];
  propagatedBuildInputs = [ cmake-modules roslib message-runtime eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut parameter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
