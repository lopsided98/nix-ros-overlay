
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fadecandy-msgs";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/eurogroep/fadecandy_ros-release/archive/release/jazzy/fadecandy_msgs/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "7266eddbe4ecf11be2d1a26b3b600982e88ff0fab0a2c4e7816826a53b378b6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS msgs for fadecandy LED controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
