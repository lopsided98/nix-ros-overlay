
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-core";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_core/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "fdeb3bb02a2b119f1d270b28046bd0a11f36e64686beae3ce7a166bd4695719e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
