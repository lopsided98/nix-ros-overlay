
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, nav-msgs }:
buildRosPackage {
  pname = "ros-eloquent-map-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/eloquent/map_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "47c44898cbe8f3043cfb1fa29da9dc949338e213790cf6d638572b49c9abb454";
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
