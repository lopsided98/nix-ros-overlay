
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-video-recorder, dynamic-tf-publisher, image-view2, jsk-rosbag-tools, jsk-tools, jsk-topic-tools }:
buildRosPackage {
  pname = "ros-jazzy-jsk-common";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/jazzy/jsk_common/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "09e8d5dae7f4f5fddbe74fbb27975505261432979fc6073f31c10f66c435b5b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ audio-video-recorder dynamic-tf-publisher image-view2 jsk-rosbag-tools jsk-tools jsk-topic-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>Metapackage that contains commonly used toolset for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
