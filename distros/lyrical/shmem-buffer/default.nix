
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rcutils, rmw, rosidl-buffer, shmem-buffer-backend-msgs }:
buildRosPackage {
  pname = "ros-lyrical-shmem-buffer";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/shmem_buffer_backend-release/archive/release/lyrical/shmem_buffer/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "7ad52508f9cbc2c27ce267779570d77f773c84d8d84bea6831363cfdd1d9e8a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rmw rosidl-buffer shmem-buffer-backend-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared-memory rosidl::Buffer storage, and same-host
   endpoint locality discovery for rosidl::Buffer backends.";
    license = with lib.licenses; [ asl20 ];
  };
}
