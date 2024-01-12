
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-follow-ar-tag";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_follow_ar_tag/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "acda595805f0ccc2af37bdaa22b3b587ca82ced2242b7fd93587d8587583f0f1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follow ARTag Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
