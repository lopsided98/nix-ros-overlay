
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-clang-format, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, event-camera-codecs, event-camera-msgs, pybind11-vendor, python-cmake-module, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-humble-event-camera-py";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_py-release/archive/release/humble/event_camera_py/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "372bc3c7d08c7ef46267797a048969a8ec91c519df26dce1129ebf06ea539031";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.numpy ];
  propagatedBuildInputs = [ event-camera-codecs event-camera-msgs pybind11-vendor ros-environment ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''Python access for event_camera_msgs.'';
    license = with lib.licenses; [ asl20 ];
  };
}
