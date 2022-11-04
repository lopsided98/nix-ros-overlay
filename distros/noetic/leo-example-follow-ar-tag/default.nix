
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-follow-ar-tag";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_follow_ar_tag/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1900efb13ba7c27bb6b0b6df0cd05691a229fcebc4f13a768a7e3325417dfad9";
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
