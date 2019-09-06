
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, sensor-msgs, rosidl-default-generators, nav-msgs, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-map-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/crystal/map_msgs/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "73777431375ad7b3d56e25f88ed4655e757047b218ae32ff4ce34affce8ee2bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs nav-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs sensor-msgs nav-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
