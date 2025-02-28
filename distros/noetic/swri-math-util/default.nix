
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-math-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_math_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "792db7a581692eec4fcbfc4d4b4dfdccdab204176fdfd7c88fc1406bb3502880";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_math_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
