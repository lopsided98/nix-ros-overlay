
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-viz }:
buildRosPackage {
  pname = "ros-humble-leo-desktop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/humble/leo_desktop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0f6f08b54c504342b3a4a2e42fe081ba30ccdaa4e39bc515b3d9649d8f1bedac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
