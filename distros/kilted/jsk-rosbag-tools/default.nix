
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, audio-common-msgs, cv-bridge, ffmpeg, jsk-ros1-ros2-compat, libjpeg, libwebp, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-jsk-rosbag-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_rosbag_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "26e0684d41c78e397de68917f671b7d329d10ebe1c06c429463a6a9f824c0177";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python libjpeg libwebp ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ audio-common-msgs cv-bridge ffmpeg jsk-ros1-ros2-compat python3Packages.numpy python3Packages.pyyaml python3Packages.scipy python3Packages.setuptools python3Packages.termcolor python3Packages.tqdm sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The rosbag tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
