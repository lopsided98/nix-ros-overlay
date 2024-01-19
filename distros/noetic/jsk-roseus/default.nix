
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp, geneus, roseus }:
buildRosPackage {
  pname = "ros-noetic-jsk-roseus";
  version = "1.7.5-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/noetic/jsk_roseus/1.7.5-2.tar.gz";
    name = "1.7.5-2.tar.gz";
    sha256 = "888a689c528c75b99cf38b04a5094670bbbdda3220b7b54dc5f4f43628d3cd69";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ euslisp geneus roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains roseus package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
