
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-humble-leo-viz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/humble/leo_viz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f8ab730ef7478c6542d58f09ebc2395f51b6dd9cec300ee5b25677aa685e3e39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
