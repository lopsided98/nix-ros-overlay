
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-video-recorder, dynamic-tf-publisher, image-view2, jsk-rosbag-tools, jsk-tools, jsk-topic-tools, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-jsk-common";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common-release/archive/release/rolling/jsk_common/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "196fa7fc83c05ebd836a200f73d6b259972932985ac0e35b62d344b83e480796";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ audio-video-recorder dynamic-tf-publisher image-view2 jsk-rosbag-tools jsk-tools jsk-topic-tools ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsd3 ];
  };
}
