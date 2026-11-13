
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, audio-common-msgs, cv-bridge, ffmpeg, jsk-ros1-ros2-compat, jsk-topic-tools, libjpeg, libwebp, python3Packages, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-jsk-rosbag-tools";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common-release/archive/release/rolling/jsk_rosbag_tools/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "f435c455d9ee26c13c49685dc8e3c23ec60ab706fc95c8c93fdfede249021c8b";
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
