
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-nerian-stereo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo_ros2-release/archive/release/galactic/nerian_stereo/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "05cda22e7fa5597a900ab06c0e893cc6b7cc85ea237896ebba554d029bbc1fed";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake cv-bridge rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Driver node for ROS 2 for Scarlet, SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}
