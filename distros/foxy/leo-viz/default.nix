
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-leo-viz";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/foxy/leo_viz/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "043b980487e2e2da5b3b3b9e630b9ae36384d6c9a8425202c2d5548cf84ec087";
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
