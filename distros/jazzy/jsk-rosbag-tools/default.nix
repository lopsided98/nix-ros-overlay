
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, audio-common-msgs, cv-bridge, ffmpeg, jsk-ros1-ros2-compat, jsk-topic-tools, libjpeg, libwebp, python3Packages, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jsk-rosbag-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_rosbag_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "5ae35c5fed5d7d89fb659a9e515336e1bc0f2aef0cef861b3963369e88a4ab9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python libjpeg libwebp ros-environment ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ audio-common-msgs cv-bridge ffmpeg jsk-ros1-ros2-compat jsk-topic-tools python3Packages.numpy python3Packages.pyyaml python3Packages.scipy python3Packages.setuptools python3Packages.termcolor python3Packages.tqdm sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ros-environment ];

  meta = {
    description = "The rosbag tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
