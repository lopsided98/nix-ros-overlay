
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-px4-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/PX4/px4_msgs2-release/archive/release/eloquent/px4_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "21a4489310e672b238c1f170e448849f8e2ba6dcbddd62a453c948a2146d8871";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces ros-environment rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Package with the ROS-equivalent of PX4 uORB msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
