GCOV_PROFILE := y

ccflags-y += -Idrivers/gpu/nvgpu
ccflags-y += -Idrivers/video/tegra/host
ccflags-y += -Idrivers/devfreq
ccflags-y += -Wno-multichar
ccflags-y += -Werror

obj-$(CONFIG_GK20A) := nvgpu.o

nvgpu-y := \
	gk20a/gk20a.o \
	gk20a/as_gk20a.o \
	gk20a/ctrl_gk20a.o \
	gk20a/fifo_gk20a.o \
	gk20a/channel_gk20a.o \
	gk20a/channel_sync_gk20a.o \
	gk20a/debug_gk20a.o \
	gk20a/dbg_gpu_gk20a.o \
	gk20a/regops_gk20a.o \
	gk20a/gr_gk20a.o \
	gk20a/kind_gk20a.o \
	gk20a/mm_gk20a.o \
	gk20a/pmu_gk20a.o \
	gk20a/priv_ring_gk20a.o \
	gk20a/semaphore_gk20a.o \
	gk20a/fence_gk20a.o \
	gk20a/therm_gk20a.o \
	gk20a/gr_ctx_gk20a.o \
	gk20a/gk20a_gating_reglist.o \
	gk20a/gk20a_sysfs.o \
	gk20a/ltc_gk20a.o \
	gk20a/fb_gk20a.o \
	gk20a/hal.o \
	gk20a/hal_gk20a.o \
	gk20a/gk20a_allocator.o \
	gk20a/platform_gk20a_generic.o \
	gk20a/tsg_gk20a.o \
	gk20a/mc_gk20a.o

nvgpu-$(CONFIG_TEGRA_GK20A) += gk20a/platform_gk20a_tegra.o
nvgpu-$(CONFIG_SYNC) += gk20a/sync_gk20a.o

nvgpu-$(CONFIG_TEGRA_CLK_FRAMEWORK) += \
	gk20a/clk_gk20a.o

nvgpu-$(CONFIG_GK20A_DEVFREQ) += \
	gk20a/gk20a_scale.o
