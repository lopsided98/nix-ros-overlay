
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-msgs, warthog-viz }:
buildRosPackage {
  pname = "ros-melodic-warthog-desktop";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/melodic/warthog_desktop/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "dd9cb05569510461e865eb51fb6dda99cdf8a2a4a9536d67804ba94575100b6a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ warthog-msgs warthog-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for working with Warthog from a ROS desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
