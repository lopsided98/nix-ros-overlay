
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nerian-stereo";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/nerian-vision/nerian_stereo_ros2-release/archive/release/humble/nerian_stereo/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "52fe766f6f1a4802a71645820e77e2e536840498ebb64acf2086af3a94de2e2f";
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
