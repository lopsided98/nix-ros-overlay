
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-video-recorder, dynamic-tf-publisher, image-view2, jsk-rosbag-tools, jsk-tools, jsk-topic-tools, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-jsk-common";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/jsk_common/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "1b6c37755dbfd94f10e0719f0725c36e7cc83870d3d0d98a547500a857d50e5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ audio-video-recorder dynamic-tf-publisher image-view2 jsk-rosbag-tools jsk-tools jsk-topic-tools ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
