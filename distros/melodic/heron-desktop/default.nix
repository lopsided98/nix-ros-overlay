
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heron-msgs, heron-viz }:
buildRosPackage {
  pname = "ros-melodic-heron-desktop";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_desktop-release/archive/release/melodic/heron_desktop/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "9f85ce7a3ac1b2946097bf03585b55b9577ace9bed0bf395ab331ac2749c6f46";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ heron-msgs heron-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heron_desktop metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
