
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-video-recorder, dynamic-tf-publisher, image-view2, jsk-rosbag-tools, jsk-tools, jsk-topic-tools }:
buildRosPackage {
  pname = "ros-lyrical-jsk-common";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/lyrical/jsk_common/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "581f1acaeca7896f3889f07929014579793580385b5fcaebe2d7dbe59c7e7650";
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
