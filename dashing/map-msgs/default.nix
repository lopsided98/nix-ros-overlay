
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, sensor-msgs, rosidl-default-generators, nav-msgs, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-map-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/dashing/map_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "be21457f4ed196bf3b6bd840385f9f2b4e2f86d2bae14eaf2400fbc30fff42bc";
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
