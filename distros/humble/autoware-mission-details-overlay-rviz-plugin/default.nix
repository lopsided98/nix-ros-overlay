
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-internal-msgs, autoware-lint-common, boost, rviz-2d-overlay-msgs, rviz-2d-overlay-plugins, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-autoware-mission-details-overlay-rviz-plugin";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_mission_details_overlay_rviz_plugin/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a17ed890892c7f34e596433c9140e8bca8178d37ed2fd93b48e35491347105ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-internal-msgs boost rviz-2d-overlay-msgs rviz-2d-overlay-plugins rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "RViz2 plugin for 2D overlays for mission details in the 3D view.";
    license = with lib.licenses; [ asl20 ];
  };
}
