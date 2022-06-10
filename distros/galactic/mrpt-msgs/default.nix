
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cppcheck, ament-cpplint, ament-lint-auto, ament-lint-cmake, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-mrpt-msgs";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_msgs-release/archive/release/galactic/mrpt_msgs/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "bd118141337a5a914f1be81d1c85e6f18a04789c8640b7dcf4f648874546f80b";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cppcheck ament-cpplint ament-lint-auto ament-lint-cmake ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
