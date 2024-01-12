
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-generator, move-base, pr2-machine, pr2-move-base, pr2-navigation-config, pr2-tuck-arms-action, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation-local";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation_local/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ce2e8ccda502ac1b7396baa5c530da99d172d76f2fc6f675d9a62c4a0f6ed595";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-trajectory-generator move-base pr2-machine pr2-move-base pr2-navigation-config pr2-tuck-arms-action topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds xml files for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
