
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heron-msgs, heron-viz }:
buildRosPackage {
  pname = "ros-kinetic-heron-desktop";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_desktop-release/archive/release/kinetic/heron_desktop/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "ebc3ef695eefa74c7fb0245eba0c733be701bcef2fc6ec43c9403780e3814036";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ heron-msgs heron-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heron_desktop metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
