
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, ros-environment, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-rolling-jsk-common-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common_msgs-release/archive/release/rolling/jsk_common_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "4fa80147d0fff6d385924563cf3e55161350e2727cce1179dca78b3168a2b3f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ jsk-footstep-msgs jsk-gui-msgs jsk-hark-msgs posedetection-msgs speech-recognition-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "<p>Metapackage that contains commonly used messages for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
