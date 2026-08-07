
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, ros-environment, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-kilted-jsk-common-msgs";
  version = "5.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/kilted/jsk_common_msgs/5.0.1-3.tar.gz";
    name = "5.0.1-3.tar.gz";
    sha256 = "959bf2809278798dde471e8bb2ab2b5b2c44fbb42134622ca96b4fa5fa3221db";
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
