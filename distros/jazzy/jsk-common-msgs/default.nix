
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, ros-environment, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jsk-common-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/jazzy/jsk_common_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "55610716123eb2f7b877bbc8ef458bb6bae6c34cce50ced3b2e9ac82713ea4cc";
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
