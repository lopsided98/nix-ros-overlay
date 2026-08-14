
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, ros-environment, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-common-msgs";
  version = "5.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/lyrical/jsk_common_msgs/5.0.1-3.tar.gz";
    name = "5.0.1-3.tar.gz";
    sha256 = "b40acd37df4222c3aa217fbf6bd04d74a6a341e006e68c608f9fdda0e4fb68fd";
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
