
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, posedetection-msgs, ros-environment, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-common-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/lyrical/jsk_common_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "dd23b5182ff4432d0ba0d2221361a6af0a30798a6c7117e7802b1119f90428ad";
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
