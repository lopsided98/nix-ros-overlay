
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, audio-common-msgs, cv-bridge, ffmpeg, jsk-ros1-ros2-compat, jsk-topic-tools, libjpeg, libwebp, python3Packages, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-rosbag-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/jsk_rosbag_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "b89cb2c37c7190269ca3af9487e9d068d96cb5cd7992422dbb50591fbb6b5cc2";
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
