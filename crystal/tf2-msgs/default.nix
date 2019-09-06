
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-tf2-msgs";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_msgs/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "3229d3ac0f9001ee47e1de7be89d370382142ea81501c9ba8a4e27c20c342c9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
