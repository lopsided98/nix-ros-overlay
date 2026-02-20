
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-cpp, ament-lint-auto, autoware-internal-planning-msgs, autoware-lint-common, autoware-perception-msgs, autoware-vehicle-msgs, boost, rviz-2d-overlay-msgs, rviz-2d-overlay-plugins, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-autoware-overlay-rviz-plugin";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_overlay_rviz_plugin/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "754b3a508da9458220d1473684dc1ac045247d99fceea75c2dc771ce2387d2f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp autoware-internal-planning-msgs autoware-perception-msgs autoware-vehicle-msgs boost rviz-2d-overlay-msgs rviz-2d-overlay-plugins rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "RViz2 plugin for 2D overlays in the 3D view for Autoware.";
    license = with lib.licenses; [ asl20 ];
  };
}
